package ${package.ServiceHelper};

import ${package.Entity}.${entity};
import ${package.Mapper}.${table.mapperName};
import ${package.Service}.${table.serviceName};
import ${superServiceImplClassPackage};
import org.springframework.stereotype.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/**
 * <p>
 * ${table.comment} 服务实现类
 * </p>
 *
 * @author ${author}
 * @since ${date}
 */
@Service
<#if kotlin>
open class ${table.serviceHelperName} : ${superServiceImplClass}<${table.mapperName}, ${entity}>(), ${table.serviceName} {

}
<#else>
public class ${table.serviceHelperName} extends ${superServiceImplClass}<${table.mapperName}, ${entity}>   {
private static final Logger logger = LoggerFactory.getLogger(${table.serviceHelperName}.class);

}
</#if>
